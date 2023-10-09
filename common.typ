#import "cv.typ/cv.typ": *

#let makeOptions(options) = (
    headingFont: "Linux Libertine",
    bodyFont: "Linux Libertine",
    fontSize: 10pt,
    lineSpacing: 6pt,
    showAddress: true,
    showNumber: true,
    ..options
)

#let cv(data, options) = [
    #show: doc => {
        doc = setRules(doc, options)
        doc = showRules(doc, options)

        doc
    }

    #let i18n = {
        let data = yaml("i18n.yml")

        if options.lang == "en" {
            data.en
        } else if options.lang == "fr" {
            data.fr
        }
    }

    #cvHeading(data, options)

    #cvSummary(data, i18n)
    #cvEducation(data, i18n)
    #cvWork(data, i18n)
    #cvAffiliations(data)
    #cvProjects(data, i18n)
    #cvAwards(data)
    #cvCertificates(data, i18n)
    #cvPublications(data)
    #cvSkills(data, i18n)
    #cvReferences(data)

    #endnote
]
