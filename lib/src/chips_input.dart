import 'package:chips_input/chips_input.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ChipsInputField<T extends Object> extends FormBuilderField<List<T>> {
  ChipsInputField({
    super.key,
    super.autovalidateMode = AutovalidateMode.disabled,
    super.enabled,
    super.focusNode,
    super.onSaved,
    super.validator,
    super.decoration = const InputDecoration(),
    required super.name, //From Super
    super.initialValue,
    super.onChanged,
    super.valueTransformer,
    super.onReset,
    required ChipsBuilder<T> chipBuilder,
    SuggestionBuilder<T>? suggestionBuilder,
    required ChipsInputSuggestions<T> findSuggestions,
    List<T>? initialValues,
    int? maxChips,
    bool autocorrect = true,
    bool autofocus = false,
    InputCounterWidgetBuilder? buildCounter,
    TextEditingController? controller,
    Color? cursorColor,
    double? cursorHeight,
    Radius? cursorRadius,
    double cursorWidth = 2.0,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool enableInteractiveSelection = true,
    bool expands = false,
    List<TextInputFormatter>? inputFormatters,
    Brightness? keyboardAppearance,
    TextInputType? keyboardType,
    int? maxLength,
    MaxLengthEnforcement? maxLengthEnforcement,
    int? maxLines,
    int? minLines,
    MouseCursor? mouseCursor,
    bool obscureText = false,
    String obscuringCharacter = '•',
    AppPrivateCommandCallback? onAppPrivateCommand,
    VoidCallback? onEditingComplete,
    VoidCallback? onTap,
    AutocompleteOptionsViewBuilder<T>? optionsViewBuilder,
    String? restorationId,
    ScrollController? scrollController,
    EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
    ScrollPhysics? scrollPhysics,
    TextSelectionControls? selectionControls,
    bool? showCursor,
    SmartDashesType smartDashesType = SmartDashesType.enabled,
    SmartQuotesType smartQuotesType = SmartQuotesType.enabled,
    StrutStyle? strutStyle,
    TextStyle? style,
    TextAlign textAlign = TextAlign.start,
    TextAlignVertical? textAlignVertical,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextDirection? textDirection,
    TextInputAction? textInputAction,
  }) : super(builder: (FormFieldState<List<T>?> field) {
          final state = field as ChipsInputFieldState<T>;
          return ChipsInput<T>(
            maxChips: maxChips,
            initialValue: initialValues ?? [],
            findSuggestions: findSuggestions,
            decoration: decoration,
            onChanged: (data) {
              state.didChange(data);
            },
            chipBuilder: chipBuilder,
            suggestionBuilder: suggestionBuilder,
            enabled: state.enabled,
            autocorrect: autocorrect,
            autofocus: autofocus,
            buildCounter: buildCounter,
            controller: controller,
            cursorColor: cursorColor,
            cursorHeight: cursorHeight,
            cursorRadius: cursorRadius,
            cursorWidth: cursorWidth,
            dragStartBehavior: dragStartBehavior,
            enableInteractiveSelection: enableInteractiveSelection,
            expands: expands,
            inputFormatters: inputFormatters,
            keyboardAppearance: keyboardAppearance,
            keyboardType: keyboardType,
            maxLength: maxLength,
            maxLengthEnforcement: maxLengthEnforcement,
            maxLines: maxLines,
            minLines: minLines,
            mouseCursor: mouseCursor,
            obscureText: obscureText,
            obscuringCharacter: obscuringCharacter,
            onAppPrivateCommand: onAppPrivateCommand,
            onEditingComplete: onEditingComplete,
            onTap: onTap,
            optionsViewBuilder: optionsViewBuilder,
            readOnly: !state.enabled,
            restorationId: restorationId,
            scrollController: scrollController,
            scrollPadding: scrollPadding,
            scrollPhysics: scrollPhysics,
            selectionControls: selectionControls,
            showCursor: showCursor,
            smartDashesType: smartDashesType,
            smartQuotesType: smartQuotesType,
            strutStyle: strutStyle,
            style: style,
            textAlign: textAlign,
            textAlignVertical: textAlignVertical,
            textCapitalization: textCapitalization,
            textDirection: textDirection,
            textInputAction: textInputAction,
          );
        });

  @override
  ChipsInputFieldState<T> createState() => ChipsInputFieldState<T>();
}

class ChipsInputFieldState<T extends Object>
    extends FormBuilderFieldState<ChipsInputField<T>, List<T>> {}
