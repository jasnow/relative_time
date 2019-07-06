# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/i18n/all/i18n.rbi
#
# i18n-1.6.0
module I18n
  def self.interpolate(string, values); end
  def self.interpolate_hash(string, values); end
  def self.new_double_nested_cache; end
  extend I18n::Base
end
class I18n::ExceptionHandler
  def call(exception, _locale, _key, _options); end
end
class I18n::ArgumentError < ArgumentError
end
class I18n::Disabled < I18n::ArgumentError
  def initialize(method); end
end
class I18n::InvalidLocale < I18n::ArgumentError
  def initialize(locale); end
  def locale; end
end
class I18n::InvalidLocaleData < I18n::ArgumentError
  def filename; end
  def initialize(filename, exception_message); end
end
class I18n::MissingTranslation < I18n::ArgumentError
  include I18n::MissingTranslation::Base
end
module I18n::MissingTranslation::Base
  def initialize(locale, key, options = nil); end
  def key; end
  def keys; end
  def locale; end
  def message; end
  def options; end
  def to_exception; end
  def to_s; end
end
class I18n::MissingTranslationData < I18n::ArgumentError
  include I18n::MissingTranslation::Base
end
class I18n::InvalidPluralizationData < I18n::ArgumentError
  def count; end
  def entry; end
  def initialize(entry, count, key); end
  def key; end
end
class I18n::MissingInterpolationArgument < I18n::ArgumentError
  def initialize(key, values, string); end
  def key; end
  def string; end
  def values; end
end
class I18n::ReservedInterpolationKey < I18n::ArgumentError
  def initialize(key, string); end
  def key; end
  def string; end
end
class I18n::UnknownFileType < I18n::ArgumentError
  def filename; end
  def initialize(type, filename); end
  def type; end
end
module I18n::Base
  def available_locales; end
  def available_locales=(value); end
  def available_locales_initialized?; end
  def backend; end
  def backend=(value); end
  def config; end
  def config=(value); end
  def default_locale; end
  def default_locale=(value); end
  def default_separator; end
  def default_separator=(value); end
  def eager_load!; end
  def enforce_available_locales!(locale); end
  def enforce_available_locales; end
  def enforce_available_locales=(value); end
  def exception_handler; end
  def exception_handler=(value); end
  def exists?(key, _locale = nil, locale: nil); end
  def handle_exception(handling, exception, locale, key, options); end
  def l(object, locale: nil, format: nil, **options); end
  def load_path; end
  def load_path=(value); end
  def locale; end
  def locale=(value); end
  def locale_available?(locale); end
  def localize(object, locale: nil, format: nil, **options); end
  def normalize_key(key, separator); end
  def normalize_keys(locale, key, scope, separator = nil); end
  def reload!; end
  def t!(key, options = nil); end
  def t(key = nil, *arg1, throw: nil, raise: nil, locale: nil, **options); end
  def translate!(key, options = nil); end
  def translate(key = nil, *arg1, throw: nil, raise: nil, locale: nil, **options); end
  def transliterate(key, *arg1, throw: nil, raise: nil, locale: nil, replacement: nil, **options); end
  def with_locale(tmp_locale = nil); end
end
module I18n::Backend
end
module I18n::Backend::Pluralization
  def pluralize(locale, entry, count); end
  def pluralizer(locale); end
  def pluralizers; end
end
