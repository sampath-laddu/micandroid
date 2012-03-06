package ningbo.media.builder.api ;

import ningbo.media.model.Token;

public class DropBoxApi extends DefaultApi10a
{
  @Override
  public String getAccessTokenEndpoint()
  {
    return "https://api.dropbox.com/0/oauth/access_token";
  }

  @Override
  public String getAuthorizationUrl(Token requestToken)
  {
    return "https://www.dropbox.com/0/oauth/authorize?oauth_token="+requestToken.getToken();
  }

  @Override
  public String getRequestTokenEndpoint()
  {
    return "https://api.dropbox.com/0/oauth/request_token";
  }

}