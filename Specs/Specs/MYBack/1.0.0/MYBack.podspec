#PACKAGE = 'com.mybank.ios.phone.mybportal'

Pod::Spec.new do |s|  
  
    s.name         = "MYBack"
    s.version      = "1.0.0"
    s.ios.deployment_target = '7.0'
    s.summary      = "A delightful setting interface framework."
    s.homepage     = "https://github.com/DAIBIDAIBI/MYBack"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "代碧" => "1573003357@qq.com" } 
    s.source       = { :git => "https://github.com/DAIBIDAIBI/MYBack.git", :tag => s.version }
    s.source_files  = "MYBack/*.{h,m}"
    #s.resources          = "YJSettingTableView/YJSettingTableView.bundle"
    s.requires_arc = true

end  