// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
public enum L10n {
  public enum General {
    /// General.strings
    ///   Fodamy
    /// 
    ///   Created by Furkan on 7.11.2023.
    public static let login = L10n.tr("General", "login", fallback: "Giriş Yap")
    /// Üye Ol
    public static let register = L10n.tr("General", "register", fallback: "Üye Ol")
  }
  public enum Modules {
    public enum RegisterViewController {
      /// Hesabın mı var?
      public static let bottomText = L10n.tr("Modules", "RegisterViewController.bottomText", fallback: "Hesabın mı var?")
      /// Modules.strings
      ///   Fodamy
      /// 
      ///   Created by Furkan on 7.11.2023.
      public static let title = L10n.tr("Modules", "RegisterViewController.title", fallback: "Üye Ol")
    }
  }
  public enum Placeholder {
    /// E-mail Adresi
    public static let email = L10n.tr("Placeholder", "email", fallback: "E-mail Adresi")
    /// Şifre
    public static let password = L10n.tr("Placeholder", "password", fallback: "Şifre")
    /// Placeholder.strings
    ///   Fodamy
    /// 
    ///   Created by Furkan on 7.11.2023.
    public static let username = L10n.tr("Placeholder", "username", fallback: "Kullanıcı Adı")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
