require 'ostruct'
require 'digest/md5'

module ApplicationHelpers

  def page_title
    current_page.data.title
  end

  def page_description
  end

  def page_class
  end

  def page_url
    #URI.join(blog_settings.url, current_page.url)
  end

  def facebook_app_id
    "976783519065114"
  end

  def twitter_url
    "https://twitter.com/intent/tweet?text=#{current_article.title}" \
      "&amp;url=#{current_article_url}"
  end
  def facebook_url
    "https://www.facebook.com/sharer/sharer.php?u=#{current_article_url}"
  end
  def google_plus_url
    "https://plus.google.com/share?url=#{current_article_url}"
  end


  def jsonld_type
    if is_blog_article?
      'BlogPosting'
    else
      'WebPage'
    end
  end

  def og_type
    if is_blog_article?
      'article'
    else
      'website'
    end
  end

  def og_title
    current_page.data.title if current_page.data.title
  end
  alias :twitter_title :og_title

  def json_ld_person
    {
      :"@type" => "Person",
      :name => "Eric Raio",
      :image => {
        :"@type" => "ImageObject",
        :url => "http://s.gravatar.com/avatar/69bdacd70dafc570b4d2cc1e670b1968?s=120"
      }
    }
  end
end
