import React, { Component } from "react";

import {
  EmailShareButton,
  FacebookShareButton,
  LinkedinShareButton,
  RedditShareButton,
  TelegramShareButton,
  TwitterShareButton,
  WhatsappShareButton,

  EmailIcon,
  FacebookIcon,
  LinkedinIcon,
  RedditIcon,
  TelegramIcon,
  TwitterIcon,
  WhatsappIcon,
} from "react-share";

import { Link_to_Applink, Mensagem } from './messages.js'

export default class App extends Component {
  render() {
    return(
      <>
        <FacebookShareButton 
          url={Link_to_Applink}
          title={Mensagem}

        >
          <FacebookIcon size={40} round={true} />
        </FacebookShareButton>
        
        <WhatsappShareButton 
          url={Link_to_Applink}
          title={Mensagem}
        >
          <WhatsappIcon size={40} round={true} />
        </WhatsappShareButton>

        <EmailShareButton 
          url={Link_to_Applink}
          title={Mensagem}
        >
          <EmailIcon size={40} round={true} />
        </EmailShareButton>

        <LinkedinShareButton 
          url={Link_to_Applink}
          title={Mensagem}
        >
          <LinkedinIcon size={40} round={true} />
        </LinkedinShareButton>

        <RedditShareButton 
          url={Link_to_Applink}
          title={Mensagem}
        >
          <RedditIcon size={40} round={true} />
        </RedditShareButton>

        <TelegramShareButton 
          url={Link_to_Applink}
          title={Mensagem}
        >
          <TelegramIcon size={40} round={true} />
        </TelegramShareButton>

        <TwitterShareButton 
          url={Link_to_Applink}
          title={Mensagem}
        >
          <TwitterIcon size={40} round={true} />
        </TwitterShareButton>
      </>

    )
  }
}