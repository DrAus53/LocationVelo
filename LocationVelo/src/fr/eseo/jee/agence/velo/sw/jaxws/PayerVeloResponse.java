
package fr.eseo.jee.agence.velo.sw.jaxws;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * This class was generated by Apache CXF 3.2.1
 * Fri Mar 23 16:21:54 CET 2018
 * Generated source version: 3.2.1
 */

@XmlRootElement(name = "payerVeloResponse", namespace = "http://sw.velo.agence.jee.eseo.fr/")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "payerVeloResponse", namespace = "http://sw.velo.agence.jee.eseo.fr/")

public class PayerVeloResponse {

    @XmlElement(name = "return")
    private java.lang.String _return;

    public java.lang.String getReturn() {
        return this._return;
    }

    public void setReturn(java.lang.String new_return)  {
        this._return = new_return;
    }

}

