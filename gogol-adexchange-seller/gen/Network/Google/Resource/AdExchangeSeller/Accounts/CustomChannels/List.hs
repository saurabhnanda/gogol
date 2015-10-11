{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all custom channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ <https://developers.google.com/ad-exchange/seller-rest/ Ad Exchange Seller API Reference> for @AdexchangesellerAccountsCustomChannelsList@.
module Network.Google.Resource.AdExchangeSeller.Accounts.CustomChannels.List
    (
    -- * REST Resource
      AccountsCustomChannelsListResource

    -- * Creating a Request
    , accountsCustomChannelsList'
    , AccountsCustomChannelsList'

    -- * Request Lenses
    , acclQuotaUser
    , acclPrettyPrint
    , acclUserIP
    , acclAdClientId
    , acclAccountId
    , acclKey
    , acclPageToken
    , acclOAuthToken
    , acclMaxResults
    , acclFields
    ) where

import           Network.Google.AdExchangeSeller.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangesellerAccountsCustomChannelsList@ method which the
-- 'AccountsCustomChannelsList'' request conforms to.
type AccountsCustomChannelsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "customchannels" :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             Header "Authorization" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CustomChannels

-- | List all custom channels in the specified ad client for this Ad Exchange
-- account.
--
-- /See:/ 'accountsCustomChannelsList'' smart constructor.
data AccountsCustomChannelsList' = AccountsCustomChannelsList'
    { _acclQuotaUser   :: !(Maybe Text)
    , _acclPrettyPrint :: !Bool
    , _acclUserIP      :: !(Maybe Text)
    , _acclAdClientId  :: !Text
    , _acclAccountId   :: !Text
    , _acclKey         :: !(Maybe AuthKey)
    , _acclPageToken   :: !(Maybe Text)
    , _acclOAuthToken  :: !(Maybe OAuthToken)
    , _acclMaxResults  :: !(Maybe Word32)
    , _acclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomChannelsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acclQuotaUser'
--
-- * 'acclPrettyPrint'
--
-- * 'acclUserIP'
--
-- * 'acclAdClientId'
--
-- * 'acclAccountId'
--
-- * 'acclKey'
--
-- * 'acclPageToken'
--
-- * 'acclOAuthToken'
--
-- * 'acclMaxResults'
--
-- * 'acclFields'
accountsCustomChannelsList'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsCustomChannelsList'
accountsCustomChannelsList' pAcclAdClientId_ pAcclAccountId_ =
    AccountsCustomChannelsList'
    { _acclQuotaUser = Nothing
    , _acclPrettyPrint = True
    , _acclUserIP = Nothing
    , _acclAdClientId = pAcclAdClientId_
    , _acclAccountId = pAcclAccountId_
    , _acclKey = Nothing
    , _acclPageToken = Nothing
    , _acclOAuthToken = Nothing
    , _acclMaxResults = Nothing
    , _acclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acclQuotaUser :: Lens' AccountsCustomChannelsList' (Maybe Text)
acclQuotaUser
  = lens _acclQuotaUser
      (\ s a -> s{_acclQuotaUser = a})

-- | Returns response with indentations and line breaks.
acclPrettyPrint :: Lens' AccountsCustomChannelsList' Bool
acclPrettyPrint
  = lens _acclPrettyPrint
      (\ s a -> s{_acclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acclUserIP :: Lens' AccountsCustomChannelsList' (Maybe Text)
acclUserIP
  = lens _acclUserIP (\ s a -> s{_acclUserIP = a})

-- | Ad client for which to list custom channels.
acclAdClientId :: Lens' AccountsCustomChannelsList' Text
acclAdClientId
  = lens _acclAdClientId
      (\ s a -> s{_acclAdClientId = a})

-- | Account to which the ad client belongs.
acclAccountId :: Lens' AccountsCustomChannelsList' Text
acclAccountId
  = lens _acclAccountId
      (\ s a -> s{_acclAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acclKey :: Lens' AccountsCustomChannelsList' (Maybe AuthKey)
acclKey = lens _acclKey (\ s a -> s{_acclKey = a})

-- | A continuation token, used to page through custom channels. To retrieve
-- the next page, set this parameter to the value of \"nextPageToken\" from
-- the previous response.
acclPageToken :: Lens' AccountsCustomChannelsList' (Maybe Text)
acclPageToken
  = lens _acclPageToken
      (\ s a -> s{_acclPageToken = a})

-- | OAuth 2.0 token for the current user.
acclOAuthToken :: Lens' AccountsCustomChannelsList' (Maybe OAuthToken)
acclOAuthToken
  = lens _acclOAuthToken
      (\ s a -> s{_acclOAuthToken = a})

-- | The maximum number of custom channels to include in the response, used
-- for paging.
acclMaxResults :: Lens' AccountsCustomChannelsList' (Maybe Word32)
acclMaxResults
  = lens _acclMaxResults
      (\ s a -> s{_acclMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
acclFields :: Lens' AccountsCustomChannelsList' (Maybe Text)
acclFields
  = lens _acclFields (\ s a -> s{_acclFields = a})

instance GoogleAuth AccountsCustomChannelsList' where
        _AuthKey = acclKey . _Just
        _AuthToken = acclOAuthToken . _Just

instance GoogleRequest AccountsCustomChannelsList'
         where
        type Rs AccountsCustomChannelsList' = CustomChannels
        request = requestWith adExchangeSellerRequest
        requestWith rq AccountsCustomChannelsList'{..}
          = go _acclAccountId _acclAdClientId _acclPageToken
              _acclMaxResults
              _acclQuotaUser
              (Just _acclPrettyPrint)
              _acclUserIP
              _acclFields
              _acclKey
              _acclOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsCustomChannelsListResource)
                      rq
