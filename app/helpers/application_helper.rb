module ApplicationHelper

  def analyticsjs_init
    js = ""
    if Rails.application.config.respond_to?('google_analytics')
      js = """<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', '#{Rails.application.config.google_analytics}', 'auto');
  ga('send', 'pageview', location.pathname + location.search + location.hash);
</script>"""
    end
    js.html_safe
  end

end
