import React from "react"

import colors from "../colors"
import shadows from "../shadows"
import textStyles from "../textStyles"

export default class LocalAsset extends React.Component {
  render() {


    return (
      <div style={styles.view}>
        <img style={styles.image} src={require("../assets/icon_128x128.png")} />
      </div>
    );
  }
};

let styles = {
  view: {
    alignItems: "flex-start",
    backgroundColor: colors.red400,
    display: "flex",
    flex: "0 0 auto",
    flexDirection: "column",
    justifyContent: "flex-start"
  },
  image: {
    alignItems: "flex-start",
    backgroundColor: "#D8D8D8",
    display: "flex",
    flexDirection: "column",
    justifyContent: "flex-start",
    overflow: "hidden",
    width: "100px",
    height: "100px",
    objectFit: "cover",
    position: "relative"
  },
  imageResizeModeCover: {
    width: "100%",
    height: "100%",
    objectFit: "cover",
    position: "absolute"
  }
}