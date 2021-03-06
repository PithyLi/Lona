import UIKit
import Foundation

// MARK: - BackgroundImageView

private class BackgroundImageView: UIImageView {
  override var intrinsicContentSize: CGSize {
    return .zero
  }
}

// MARK: - ImageCropping

public class ImageCropping: UIView {

  // MARK: Lifecycle

  public init() {
    super.init(frame: .zero)

    setUpViews()
    setUpConstraints()

    update()
  }

  public required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  // MARK: Private

  private var aspectFitView = BackgroundImageView(frame: .zero)
  private var aspectFillView = BackgroundImageView(frame: .zero)
  private var stretchFillView = BackgroundImageView(frame: .zero)
  private var fixedAspectFillView = BackgroundImageView(frame: .zero)
  private var fixedStretchView = BackgroundImageView(frame: .zero)

  private func setUpViews() {
    aspectFitView.layer.masksToBounds = true
    aspectFillView.contentMode = .scaleAspectFill
    aspectFillView.layer.masksToBounds = true
    stretchFillView.layer.masksToBounds = true
    fixedAspectFillView.contentMode = .scaleAspectFill
    fixedAspectFillView.layer.masksToBounds = true
    fixedStretchView.layer.masksToBounds = true

    addSubview(aspectFitView)
    addSubview(aspectFillView)
    addSubview(stretchFillView)
    addSubview(fixedAspectFillView)
    addSubview(fixedStretchView)

    aspectFitView.image = #imageLiteral(resourceName: "icon_128x128")
    aspectFitView.contentMode = .scaleAspectFit
    aspectFillView.image = #imageLiteral(resourceName: "icon_128x128")
    stretchFillView.image = #imageLiteral(resourceName: "icon_128x128")
    stretchFillView.contentMode = .scaleToFill
    fixedAspectFillView.image = #imageLiteral(resourceName: "icon_128x128")
    fixedStretchView.image = #imageLiteral(resourceName: "icon_128x128")
    fixedStretchView.contentMode = .scaleToFill
  }

  private func setUpConstraints() {
    translatesAutoresizingMaskIntoConstraints = false
    aspectFitView.translatesAutoresizingMaskIntoConstraints = false
    aspectFillView.translatesAutoresizingMaskIntoConstraints = false
    stretchFillView.translatesAutoresizingMaskIntoConstraints = false
    fixedAspectFillView.translatesAutoresizingMaskIntoConstraints = false
    fixedStretchView.translatesAutoresizingMaskIntoConstraints = false

    let aspectFitViewTopAnchorConstraint = aspectFitView.topAnchor.constraint(equalTo: topAnchor)
    let aspectFitViewLeadingAnchorConstraint = aspectFitView.leadingAnchor.constraint(equalTo: leadingAnchor)
    let aspectFitViewTrailingAnchorConstraint = aspectFitView.trailingAnchor.constraint(equalTo: trailingAnchor)
    let aspectFillViewTopAnchorConstraint = aspectFillView.topAnchor.constraint(equalTo: aspectFitView.bottomAnchor)
    let aspectFillViewLeadingAnchorConstraint = aspectFillView.leadingAnchor.constraint(equalTo: leadingAnchor)
    let aspectFillViewTrailingAnchorConstraint = aspectFillView.trailingAnchor.constraint(equalTo: trailingAnchor)
    let stretchFillViewTopAnchorConstraint = stretchFillView.topAnchor.constraint(equalTo: aspectFillView.bottomAnchor)
    let stretchFillViewLeadingAnchorConstraint = stretchFillView.leadingAnchor.constraint(equalTo: leadingAnchor)
    let stretchFillViewTrailingAnchorConstraint = stretchFillView.trailingAnchor.constraint(equalTo: trailingAnchor)
    let fixedAspectFillViewTopAnchorConstraint = fixedAspectFillView
      .topAnchor
      .constraint(equalTo: stretchFillView.bottomAnchor)
    let fixedAspectFillViewLeadingAnchorConstraint = fixedAspectFillView
      .leadingAnchor
      .constraint(equalTo: leadingAnchor)
    let fixedStretchViewBottomAnchorConstraint = fixedStretchView.bottomAnchor.constraint(equalTo: bottomAnchor)
    let fixedStretchViewTopAnchorConstraint = fixedStretchView
      .topAnchor
      .constraint(equalTo: fixedAspectFillView.bottomAnchor)
    let fixedStretchViewLeadingAnchorConstraint = fixedStretchView.leadingAnchor.constraint(equalTo: leadingAnchor)
    let aspectFitViewHeightAnchorConstraint = aspectFitView.heightAnchor.constraint(equalToConstant: 100)
    let aspectFillViewHeightAnchorConstraint = aspectFillView.heightAnchor.constraint(equalToConstant: 100)
    let stretchFillViewHeightAnchorConstraint = stretchFillView.heightAnchor.constraint(equalToConstant: 100)
    let fixedAspectFillViewHeightAnchorConstraint = fixedAspectFillView.heightAnchor.constraint(equalToConstant: 100)
    let fixedAspectFillViewWidthAnchorConstraint = fixedAspectFillView.widthAnchor.constraint(equalToConstant: 200)
    let fixedStretchViewHeightAnchorConstraint = fixedStretchView.heightAnchor.constraint(equalToConstant: 100)
    let fixedStretchViewWidthAnchorConstraint = fixedStretchView.widthAnchor.constraint(equalToConstant: 200)

    NSLayoutConstraint.activate([
      aspectFitViewTopAnchorConstraint,
      aspectFitViewLeadingAnchorConstraint,
      aspectFitViewTrailingAnchorConstraint,
      aspectFillViewTopAnchorConstraint,
      aspectFillViewLeadingAnchorConstraint,
      aspectFillViewTrailingAnchorConstraint,
      stretchFillViewTopAnchorConstraint,
      stretchFillViewLeadingAnchorConstraint,
      stretchFillViewTrailingAnchorConstraint,
      fixedAspectFillViewTopAnchorConstraint,
      fixedAspectFillViewLeadingAnchorConstraint,
      fixedStretchViewBottomAnchorConstraint,
      fixedStretchViewTopAnchorConstraint,
      fixedStretchViewLeadingAnchorConstraint,
      aspectFitViewHeightAnchorConstraint,
      aspectFillViewHeightAnchorConstraint,
      stretchFillViewHeightAnchorConstraint,
      fixedAspectFillViewHeightAnchorConstraint,
      fixedAspectFillViewWidthAnchorConstraint,
      fixedStretchViewHeightAnchorConstraint,
      fixedStretchViewWidthAnchorConstraint
    ])
  }

  private func update() {}
}
