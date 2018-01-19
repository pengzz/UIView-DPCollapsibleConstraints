
Pod::Spec.new do |s|
  s.name         = "UIView+ZZ_DPCollapsibleConstraints"
  s.version      = "1.2"
  s.summary      = "Collapsible auto layout constraints. (外加:ZZAligmentRectInsets)"
  s.description  = "Collapse a view with its selected auto layout constraints in interface builder."
  s.homepage     = "https://github.com/forkingdog/UIView-FDCollapsibleConstraints"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license = { :type => "MIT", :file => "LICENSE" }
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author = { "forkingdog group" => "https://github.com/forkingdog" }
  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform = :ios, "6.0"
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#s.source = { :git => "https://github.com/forkingdog/UIView-FDCollapsibleConstraints.git", :tag => "1.1" }
#s.source = { :git => "https://github.com/depaba/UIView-DPCollapsibleConstraints.git", :branch => 'master', :commit => "9ed20f4" }
s.source = { :git => "https://github.com/pengzz/UIView-DPCollapsibleConstraints.git", :branch => 'pzz', :tag => s.version }
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "Classes/*/*.{h,m}"
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
end
