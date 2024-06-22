import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:support_pkg/core/screens/screens.dart';
import 'package:support_pkg/generated/l10n.dart';
import 'package:support_pkg/modules/module_cards/domain/entities/businesse_entity.dart';
import 'package:support_pkg/modules/module_cards/presentation/controller/logic/manage_cards_logic.dart';
import 'package:support_pkg/utils/components/fixed_container.dart';
import 'package:support_pkg/utils/theme_consts.dart';


class BusinessesDropDownSearchBar extends Screens {
  final ManageCardsLogic controller;

  BusinessesDropDownSearchBar(this.controller) : super(controller);

  @override
  Widget getUI(BuildContext context) {
    return Center(
      child: FixedContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(ThemeConstants.circularRounded),
              color: Theme.of(context).colorScheme.background,
            ),
            child: TypeAheadField<BusinessEntity>(
              suggestionsCallback: (search) {
                if (search.isNotEmpty) return controller.getBusinesses(search);
              },
              builder: (context, controllerr, focusNode) {
                controller.searchController = controllerr;
                return TextFormField(
                  controller: controllerr,
                  decoration:   InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: S.current.search
                  ),
                  autofocus: true,
                  focusNode: focusNode,
                  onChanged: (value) {
                    controller.suggestionsController.refresh();
                  },
                );
              },
              itemBuilder: (context, city) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(city.name ?? ''),
                );
              },

              onSelected: (BusinessEntity value) async {

                controller.selectedBusiness = value;
                controller.searchController.text = value.name ?? '';

                await controller.initOrderPagination();
              },
              emptyBuilder: (context) =>   Text(S.current.emptyCart),
              suggestionsController: controller.suggestionsController,
              hideOnSelect: true,
            ),
          ),
        ),
      ),
    );
  }
}
