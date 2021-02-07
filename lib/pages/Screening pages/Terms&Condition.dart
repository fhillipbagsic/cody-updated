import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  TextStyle styleBold = TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: 0.5);
  TextStyle styleNormal = TextStyle(fontSize: 14.0, letterSpacing: 0.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Terms of Use',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'APPLE INC.',
                style: styleBold,
              ),
              Text(
                'TERMS OF USE FOR APPLE COVID-19 WEBSITE',
                style: styleBold,
              ),
              Text(''),
              Text(
                'PLEASE READ THESE TERMS OF USE ("TERMS OF USE") CAREFULLY BEFORE USING THE COVID-19 WEBSITE. BY USING THE COVID-19 WEBSITE, YOU ARE AGREEING TO BE BOUND BY THESE TERMS OF USE. IF YOU DO NOT AGREE TO THESE TERMS OF USE, DO NOT USE THE TOOL.',
                style: styleBold,
              ),
              Text(''),
              Text(
                'IMPORTANT:  IN THE EVENT OF A MEDICAL EMERGENCY, PLEASE CALL EMERGENCY SERVICES. The COVID-19 Website is not designed or intended for use in the diagnosis or treatment of disease or other conditions, and the recommendations provided by the COVID-19 Website do not constitute medical advice. Please consult your healthcare provider prior to making any decisions related to your health. The COVID-19 Website is only intended for use in the United States.',
                style: styleBold,
              ),
              Text(''),
              Text(
                '1. General.',
                style: styleBold,
              ),
              Text(
                'A. The COVID-19 Website is made available, not sold, to you by Apple Inc. (“Apple”) for use only under these Terms of Use. Apple and/or Apple’s licensors retain ownership of the COVID-19 Website itself and reserve all rights not expressly granted to you. ',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'B. Apple, at its discretion, may make available future updates to the COVID-19 Website. The COVID-19 Website updates, if any, may not necessarily include all existing COVID-19 Website features. The terms of these Terms of Use will govern any COVID-19 Website updates provided by Apple to the original COVID-19 Website, unless such update is accompanied by a separate agreement, in which case you agree that the terms of that agreement will govern such update.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                '2. Permitted License Uses and Restrictions.',
                style: styleBold,
              ),
              Text(
                'A. Subject to these Terms of Use, you may use the COVID-19 Website solely for your personal, non-commercial use. You may not rent, lease, lend, sell, redistribute or sublicense the COVID-19 Website.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'B. Other Limitations. The COVID-19 Website is not available in all languages and it is intended for use only in the United States.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'C. Content and Digital Materials. Title and intellectual property rights in and to any logos or other content displayed by or accessed through the COVID-19 Website belong to the respective logo and content owner. Such content may be protected by copyright or other intellectual property laws and treaties, and may be subject to terms of use of the third party providing such content. Except as otherwise provided in these Terms of Use, (i) these Terms of Use do not grant you any rights to use such content nor does it guarantee that such content will continue to be available to you and (ii) you may not use, extract or distribute, commercially or otherwise, on a standalone basis, any photographs, images, graphics, artwork, logos, audio, video or similar assets (“Digital Materials”) contained within, or provided as a part of, the COVID-19 Website, or otherwise use the Digital Materials outside the context of its intended use as part of the COVID-19 Website.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'D. No Reverse Engineering. You may not, and you agree not to or enable others to, copy (except as expressly permitted by these Terms of Use), decompile, reverse engineer, disassemble, attempt to derive the source code of, decrypt, modify, or create derivative works of the COVID-19 Website or any services provided by the COVID-19 Website, or any part thereof (except as and only to the extent any foregoing restriction is prohibited by applicable law or to the extent as may be permitted by the licensing terms governing use of open-sourced components included with the COVID-19 Website).',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'E. Compliance with Laws. You agree to use the COVID-19 Website in compliance with all applicable laws, including local laws of the country or region in which you reside or in which you use the COVID-19 Website.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'F. Third Party Software. Apple may provide access to certain third party software or services as a convenience. To the extent that the COVID-19 Website contains or provides access to any third party software or services, Apple has no express or implied obligation to provide any technical or other support for such third party software or services. Please contact the appropriate third party software vendor, manufacturer or service provider directly for technical support and customer service related to its software, service and/or products.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'G. The COVID-19 Website is not a medical device and should not be used as a substitute for qualified medical advice. It is not designed or intended for use in the diagnosis of disease or other conditions, or in the cure, mitigation, treatment, or prevention of any condition or disease. Please consult your healthcare provider prior to making any decisions related to your health.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'H. You may not use any "deep-link", "page-scrape", "robot", "spider" or other automatic device, program, algorithm or methodology, or any similar or equivalent manual process, to access, acquire, copy or monitor any portion of the COVID-19 Website or any content, or in any way reproduce or circumvent the navigational structure or presentation of the COVID-19 Website or any content, to obtain or attempt to obtain any materials, documents or information through any means not purposely made available through the COVID-19 Website. Apple reserves the right to bar any such activity.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'I. You may not attempt to gain unauthorized access to any portion or feature of the COVID-19 Website, or any other systems or networks connected to the COVID-19 Website or to any Apple server, or to any of the services offered on or through the COVID-19 Website, by hacking, password "mining" or any other illegitimate means.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'J. You may not probe, scan or test the vulnerability of the COVID-19 Website or any network connected to the COVID-19 Website, nor breach the security or authentication measures on the COVID-19 Website or any network connected to the COVID-19 Website. You may not reverse look-up, trace or seek to trace any information on any other user of or visitor to the COVID-19 Website, or any other customer of Apple, including any Apple account not owned by you, to its source, or exploit the COVID-19 Website or any service or information made available or offered by or through the COVID-19 Website, in any way where the purpose is to reveal any information, including but not limited to personal identification or information, other than your own information, as provided for by the COVID-19 Website.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'K. You agree that you will not take any action that imposes an unreasonable or disproportionately large load on the infrastructure of the COVID-19 Website or Apple’s systems or networks, or any systems or networks connected to the COVID-19 Website or to Apple.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'L. You agree not to use any device, software or routine to interfere or attempt to interfere with the proper working of the COVID-19 Website or any transaction being conducted on the COVID-19 Website, or with any other person’s use of the COVID-19 Website.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'M. You may not forge headers or otherwise manipulate identifiers in order to disguise the origin of any message or transmittal you send to Apple on or through the COVID-19 Website or any service offered on or through the COVID-19 Website. You may not pretend that you are, or that you represent, someone else, or impersonate any other individual or entity.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                '3. Use of Data.  Apple will collect certain limited information to help Apple improve the COVID-19 Website.  This will not include any data that may personally identify you and will not be tied to your Apple ID.  Unless you provide your express consent within the COVID-19 Website, no other information will be collected or used by Apple and your information will not be shared outside Apple.  At all times, any information received by Apple will be treated in accordance with your consent and Apple’s Privacy Policy, which can be viewed at: https://www.apple.com/privacy/.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                '4. Termination. You agree that Apple may, in its sole discretion and without prior notice, discontinue your access to the COVID-19 Website and/or block your future access to the COVID-19 Website.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                '5. Disclaimer of Warranties.',
                style: styleBold,
              ),
              Text(
                '',
                style: styleNormal,
              ),
              Text(
                  'A. If you are a customer who is a consumer (someone who uses the COVID-19 Website outside of your trade, business or profession), you may have legal rights in your country of residence which would prohibit the following limitations from applying to you, and where prohibited they will not apply to you. To find out more about consumer rights, you should contact a local consumer advice organization.'),
              Text(''),
              Text(
                'B. YOU EXPRESSLY ACKNOWLEDGE AND AGREE THAT, TO THE EXTENT PERMITTED BY APPLICABLE LAW, USE OF THE COVID-19 WEBSITE, ANY RECOMMENDATIONS OR GUIDANCE PROVIDED BY THE COVID-19 WEBSITE (“RECOMMENDATIONS”), AND ANY SERVICES PERFORMED BY OR ACCESSED THROUGH THE COVID-19 WEBSITE IS AT YOUR SOLE RISK.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'C. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, THE COVID-19 WEBSITE, RECOMMENDATIONS, AND SERVICES ARE PROVIDED “AS IS” AND “AS AVAILABLE”, WITH ALL FAULTS AND WITHOUT WARRANTY OF ANY KIND, AND APPLE AND APPLE’S LICENSORS (COLLECTIVELY REFERRED TO AS "APPLE" FOR THE PURPOSES OF SECTIONS 5 AND 6) HEREBY DISCLAIM ALL WARRANTIES AND CONDITIONS WITH RESPECT TO THE COVID-19 WEBSITE, RECOMMENDATIONS AND SERVICES, EITHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES AND/OR CONDITIONS OF MERCHANTABILITY, SATISFACTORY QUALITY, FITNESS FOR A PARTICULAR PURPOSE, ACCURACY, QUIET ENJOYMENT, AND NON-INFRINGEMENT OF THIRD PARTY RIGHTS.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'D. APPLE DOES NOT WARRANT AGAINST INTERFERENCE WITH YOUR ENJOYMENT OF THE COVID-19 WEBSITE AND SERVICES, THAT THE RECOMMENDATIONS PROVIDED BY, THE FUNCTIONS CONTAINED IN, OR SERVICES PERFORMED OR PROVIDED BY, THE COVID-19 WEBSITE WILL MEET YOUR NEEDS OR REQUIREMENTS, THAT THE OPERATION OF THE COVID-19 WEBSITE OR SERVICES WILL BE UNINTERRUPTED OR ERROR-FREE, THAT ANY SERVICES WILL CONTINUE TO BE MADE AVAILABLE, THAT THE COVID-19 WEBSITE OR SERVICES WILL BE CORRECTED, OR THAT THE COVID-19 WEBSITE WILL BE COMPATIBLE OR WORK WITH ANY THIRD PARTY SOFTWARE, APPLICATIONS OR THIRD PARTY SERVICES. INSTALLATION OF THIS COVID-19 WEBSITE MAY AFFECT THE AVAILABILITY AND USABILITY OF THIRD PARTY SOFTWARE, APPLICATIONS OR THIRD PARTY SERVICES, AS WELL AS APPLE PRODUCTS AND SERVICES.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'E. CAUTION – YOU FURTHER ACKNOWLEDGE THAT THE COVID-19 WEBSITE, RECOMMENDATIONS, AND SERVICES SHOULD NOT BE RELIED UPON AS A SUBSTITUTE FOR QUALIFIED MEDICAL ADVICE AND THE COVID-19 WEBSITE, RECOMMENDATIONS, AND SERVICES ARE NOT INTENDED OR SUITABLE FOR USE IN SITUATIONS OR ENVIRONMENTS WHERE THE FAILURE OR TIME DELAYS OF, OR ERRORS OR INACCURACIES IN THE RECOMMENDATIONS, CONTENT, DATA OR INFORMATION PROVIDED BY, THE COVID-19 WEBSITE OR SERVICES COULD LEAD TO DEATH, PERSONAL INJURY, OR SEVERE PHYSICAL OR ENVIRONMENTAL DAMAGE, INCLUDING WITHOUT LIMITATION THE OPERATION OF NUCLEAR FACILITIES, AIRCRAFT NAVIGATION OR COMMUNICATION SYSTEMS, AIR TRAFFIC CONTROL, LIFE SUPPORT OR WEAPONS SYSTEMS.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                'F. NO ORAL OR WRITTEN INFORMATION OR ADVICE GIVEN BY APPLE OR AN APPLE AUTHORIZED REPRESENTATIVE SHALL CREATE A WARRANTY. SHOULD THE COVID-19 WEBSITE OR SERVICES PROVE DEFECTIVE, YOU ASSUME THE ENTIRE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF IMPLIED WARRANTIES OR LIMITATIONS ON APPLICABLE STATUTORY RIGHTS OF A CONSUMER, SO THE ABOVE EXCLUSION AND LIMITATIONS MAY NOT APPLY TO YOU.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                '6. Limitation of Liability. TO THE EXTENT NOT PROHIBITED BY APPLICABLE LAW, IN NO EVENT SHALL APPLE BE LIABLE FOR PERSONAL INJURY, OR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES WHATSOEVER, INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF PROFITS, CORRUPTION OR LOSS OF DATA, FAILURE TO TRANSMIT OR RECEIVE ANY DATA, BUSINESS INTERRUPTION OR ANY OTHER COMMERCIAL DAMAGES OR LOSSES, ARISING OUT OF OR RELATED TO YOUR USE OR INABILITY TO USE THE COVID-19 WEBSITE, RECOMMENDATIONS, AND SERVICES OR ANY THIRD PARTY SOFTWARE OR APPLICATIONS IN CONJUNCTION WITH THE COVID-19 WEBSITE, HOWEVER CAUSED, REGARDLESS OF THE THEORY OF LIABILITY (CONTRACT, TORT OR OTHERWISE) AND EVEN IF APPLE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR PERSONAL INJURY, OR OF INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO THIS LIMITATION MAY NOT APPLY TO YOU.  In no event shall Apple’s total liability to you for all damages (other than as may be required by applicable law in cases involving personal injury) exceed the amount of fifty dollars (\$50.00). The foregoing limitations will apply even if the above stated remedy fails of its essential purpose.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                '7. Export Control. You may not use or otherwise export or re-export the COVID-19 Website except as authorized by United States law and the laws of the jurisdiction(s) in which the COVID-19 Website was obtained. In particular, but without limitation, the COVID-19 Website may not be exported or re-exported (a) into any U.S. embargoed countries or (b) to anyone on the U.S. Treasury Department\'s list of Specially Designated Nationals or the U.S. Department of Commerce Denied Person’s List or Entity List or any other restricted party lists. By using the COVID-19 Website, you represent and warrant that you are not located in any such country or on any such list. You also agree that you will not use the COVID-19 Website for any purposes prohibited by United States law, including, without limitation, the development, design, manufacture or production of missiles, nuclear, chemical or biological weapons.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                '8. Controlling Law and Severability. These Terms of Use will be governed by and construed in accordance with the laws of the State of California, excluding its conflict of law principles. These Terms of Use shall not be governed by the United Nations Convention on Contracts for the International Sale of Goods, the application of which is expressly excluded. If for any reason a court of competent jurisdiction finds any provision, or portion thereof, to be unenforceable, the remainder of these Terms of Use shall continue in full force and effect.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                '9. Complete Agreement; Governing Language. These Terms of Use constitute the entire agreement between you and Apple relating to the COVID-19 Website, and supersedes all prior or contemporaneous understandings regarding such subject matter. No amendment to or modification of these Terms of Use will be binding unless in writing and signed by Apple.',
                style: styleNormal,
              ),
              Text(''),
              Text(
                '10. Third Party Acknowledgements. Portions of the COVID-19 Website may utilize or include third party software and other copyrighted material. Acknowledgements, licensing terms and disclaimers for such material are contained in the electronic documentation for the COVID-19 Website, and your use of such material is governed by their respective terms.',
                style: styleNormal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
