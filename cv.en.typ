#import "cv.typ/cv.typ": *
#import "utils.typ"

#let cvdata = yaml("cv.en.yml")

#let options = (
    lang: "en",
    headingFont: "Linux Libertine",
    bodyFont: "Linux Libertine",
    fontSize: 10pt,
    lineSpacing: 6pt,
    showAddress: true,
    showNumber: true,
)

#let cvinit(doc) = {
    doc = setrules(doc, options)
    doc = showrules(doc, options)

    doc
}

#show: doc => cvinit(doc)

#let i18n = seti18n(options)

#cvheading(cvdata, options)

#cvsummary(cvdata)
#cveducation(cvdata, i18n)
#cvwork(cvdata)
#cvaffiliations(cvdata)
#cvprojects(cvdata)
#cvawards(cvdata)
#cvcertificates(cvdata)
#cvpublications(cvdata)
#cvskills(cvdata)
#cvreferences(cvdata)

#endnote
