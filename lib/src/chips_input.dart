import 'package:chips_input/chips_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ChipsInputField<T extends Object> extends FormBuilderField<List<T>> {
  ChipsInputField({
    Key? key,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    bool enabled = true,
    FocusNode? focusNode,
    FormFieldSetter<List<T>>? onSaved,
    FormFieldValidator<List<T>>? validator,
    InputDecoration decoration = const InputDecoration(),
    required String name, //From Super
    List<T>? initialValue,
    ValueChanged<List<T>?>? onChanged,
    ValueTransformer<List<T>?>? valueTransformer,
    VoidCallback? onReset,
    required ChipsBuilder<T> chipBuilder,
    SuggestionBuilder<T>? suggestionBuilder,
    required ChipsInputSuggestions<T> findSuggestions,
    List<T>? initialValues
  }) : super(
            key: key,
            initialValue: initialValue,
            name: name,
            validator: validator,
            valueTransformer: valueTransformer,
            onChanged: onChanged,
            autovalidateMode: autovalidateMode,
            onSaved: onSaved,
            enabled: enabled,
            onReset: onReset,
            decoration: decoration,
            focusNode: focusNode,
            builder: (FormFieldState<List<T>?> field) {
              final state = field as _ChipsInputFieldState<T>;
              return ChipsInput<T>(
                maxChips: 3, // remove, if you like infinity number of chips
                initialValue: initialValues ?? [],
                findSuggestions: findSuggestions,
                decoration: decoration,
                onChanged: (data) {
                  state.didChange(data);
                },
                chipBuilder: chipBuilder,
                suggestionBuilder: suggestionBuilder,
              );
            });

  @override
  _ChipsInputFieldState<T> createState() => _ChipsInputFieldState<T>();
}

class _ChipsInputFieldState<T extends Object>
    extends FormBuilderFieldState<ChipsInputField<T>, List<T>> {
}
