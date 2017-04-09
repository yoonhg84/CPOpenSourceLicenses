Pod::Spec.new do |s|
  s.name         = "CPOpenSourceLicenses"
  s.version      = "1.0.0"
  s.summary      = "Opensource licenses viewer"
  s.description  = <<-DESC
    Opensource licenses viewer
    Set your opensource license by enum array
                   DESC
  s.homepage     = "https://github.com/yoonhg84/CPOpenSourceLicenses"
  s.license      = "MIT"
  s.author       = { "Chope" => "yoonhg2002@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/yoonhg84/CPOpenSourceLicenses.git", :tag => "#{s.version}" }
  s.source_files = "Classes", "CPOpenSourceLicenses/**/*.swift"
  s.resources    = "CPOpenSourceLicenses/Licenses/*.txt"
end
