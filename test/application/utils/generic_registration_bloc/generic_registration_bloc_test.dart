import 'package:bloc_test/bloc_test.dart';
import 'package:octonote/application/utils/form_inputs/email_form_input.dart';
import 'package:octonote/application/utils/form_inputs/password_form_input.dart';
import 'package:octonote/application/utils/generic_blocs/generic_registration_bloc/generic_registration_bloc.dart';

class RegistrationTestBloc extends GenericRegistrationBloc {}

void main() {
  blocTest<RegistrationTestBloc, GenericRegistrationState>(
    'emits same state with new EmailImput when EmailChanged is added.',
    build: () => RegistrationTestBloc(),
    act: (bloc) => bloc.add(const GenericRegistrationEvent.emailChanged("test")),
    expect: () => const <GenericRegistrationState>[
      GenericRegistrationState(email: EmailInput.dirty(email: "test"))
    ],
  );

  blocTest<RegistrationTestBloc, GenericRegistrationState>(
    'emits same state with new PasswordImput when PasswordChanged is added.',
    build: () => RegistrationTestBloc(),
    act: (bloc) => bloc.add(const GenericRegistrationEvent.passwordChanged("test")),
    expect: () => const <GenericRegistrationState>[
      GenericRegistrationState(password: PasswordInput.dirty(password: "test"))
    ],
  );

  blocTest<RegistrationTestBloc, GenericRegistrationState>(
    'emits same state with password and email invalid when they are not.',
    seed: () => const GenericRegistrationState(
      password: PasswordInput.dirty(password: "test"),
      email: EmailInput.dirty(email: "test"),
    ),
    build: () => RegistrationTestBloc(),
    act: (bloc) => bloc.add(
      GenericRegistrationEvent.validate(onValidateSuccess: (e, p) {}),
    ),
    expect: () => const <GenericRegistrationState>[
      GenericRegistrationState(
        password: PasswordInput.invalid(password: "test"),
        email: EmailInput.invalid(email: "test"),
      )
    ],
  );
  blocTest<RegistrationTestBloc, GenericRegistrationState>(
    'emits same state with only email invalid when validate with includePassword to false',
    seed: () => const GenericRegistrationState(
      password: PasswordInput.dirty(password: "test"),
      email: EmailInput.dirty(email: "test"),
    ),
    build: () => RegistrationTestBloc(),
    act: (bloc) => bloc.add(
      GenericRegistrationEvent.validate(onValidateSuccess: (e, p) {}, includePassword: false),
    ),
    expect: () => const <GenericRegistrationState>[
      GenericRegistrationState(
        email: EmailInput.invalid(email: "test"),
        password: PasswordInput.dirty(password: "test"),
      )
    ],
  );
}
