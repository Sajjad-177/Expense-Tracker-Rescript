let useAccordion = (activeClass: string, inactiveClass: string) => {
    let (index, setIndex) = React.useState(() => -1)
    let getAccordionItemClass = (ind: int) => {
        ind == index ? activeClass : inactiveClass
    }
    let accordionOnClick = (ind: int) => {
        setIndex((_) => (ind == index ? -1 : ind))
    }

    (getAccordionItemClass, accordionOnClick)
}