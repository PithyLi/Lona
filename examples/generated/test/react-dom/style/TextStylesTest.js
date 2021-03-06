import React from "react"

import colors from "../colors"
import shadows from "../shadows"
import textStyles from "../textStyles"

export default class TextStylesTest extends React.Component {
  render() {


    return (
      <div style={styles.view}>
        <span style={styles.text1}>
          {"Text goes here"}
        </span>
        <span style={styles.text2}>
          {"Text goes here"}
        </span>
        <span style={styles.text3}>
          {"Text goes here"}
        </span>
        <div style={styles.view3}>
          <span style={styles.text4}>
            {"Text goes here"}
          </span>
        </div>
        <div style={styles.view1}>
          <span style={styles.text5}>
            {"Text goes here"}
          </span>
        </div>
        <div style={styles.view2}>
          <span style={styles.text6}>
            {
              "Text goes here and wraps around when it reaches the end of the text field."
            }
          </span>
        </div>
        <span style={styles.text7}>
          {"Text goes here"}
        </span>
        <span style={styles.text8}>
          {"Text goes here"}
        </span>
        <span style={styles.text9}>
          {"Text goes here"}
        </span>
      </div>
    );
  }
};

let styles = {
  view: {
    alignItems: "flex-start",
    display: "flex",
    flex: "1 1 0%",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text1: {
    textAlign: "left",
    ...textStyles.display3,
    alignItems: "flex-start",
    display: "block",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text2: {
    textAlign: "left",
    ...textStyles.display2,
    alignItems: "flex-start",
    display: "block",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text3: {
    textAlign: "left",
    ...textStyles.display1,
    alignItems: "flex-start",
    display: "block",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  view3: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    backgroundColor: colors.green50,
    display: "flex",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  view1: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    backgroundColor: colors.green100,
    display: "flex",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  view2: {
    alignItems: "flex-start",
    alignSelf: "stretch",
    backgroundColor: colors.green200,
    display: "flex",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text7: {
    textAlign: "left",
    ...textStyles.body2,
    alignItems: "flex-start",
    display: "block",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text8: {
    textAlign: "left",
    ...textStyles.body1,
    alignItems: "flex-start",
    display: "block",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text9: {
    textAlign: "left",
    ...textStyles.caption,
    alignItems: "flex-start",
    display: "block",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text4: {
    textAlign: "left",
    ...textStyles.headline,
    alignItems: "flex-start",
    display: "block",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text5: {
    textAlign: "left",
    ...textStyles.subheading2,
    alignItems: "flex-start",
    display: "block",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  text6: {
    textAlign: "left",
    ...textStyles.subheading1,
    alignItems: "flex-start",
    display: "block",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  }
}