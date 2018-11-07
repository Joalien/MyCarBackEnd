package io.swagger.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import java.util.Objects;

/**
 * Car
 */
@Validated
@javax.annotation.Generated(value = "io.swagger.codegen.languages.SpringCodegen", date = "2018-10-25T10:59:21.087Z")

public class Car {
  @JsonProperty("version_id")
  private int version_id;

  @JsonProperty("version")
  private String version;

  @JsonProperty("marque")
  private String marque = "Toyota";

  @JsonProperty("categorie")
  private String categorie = null;

  @JsonProperty("co2")
  private String co2 = null;

  @JsonProperty("consommation")
  private String consommation = null;

  @JsonProperty("places")
  private String places;

  @JsonProperty("portess")
  private String portess;

  @JsonProperty("pays")
  private String pays = "France";

  @JsonProperty("zone")
  private String zone = "Europe";

  @JsonProperty("anciennete")
  private String anciennete = null;

  @JsonProperty("prix")
  private int prix;

  /**
   * Get version
   * @return version
  **/
  @ApiModelProperty(value = "")


  public Car marque(String marque) {
    this.marque = marque;
    return this;
  }

  /**
   * Get marque
   * @return marque
  **/
  @ApiModelProperty(value = "")


  public String getMarque() {
    return marque;
  }

  public void setMarque(String marque) {
    this.marque = marque;
  }

  public Car categorie(String categorie) {
    this.categorie = categorie;
    return this;
  }

  public String getVersion() {
    return version;
  }

  public void setVersion(String version) {
    this.version = version;
  }

  public int getVersion_id() {
    return version_id;
  }

  public void setVersion_id(int version_id) {
    this.version_id = version_id;
  }

  /**
   * Get categorie
   * @return categorie
  **/
  @ApiModelProperty(value = "")


  public String getCategorie() {
    return categorie;
  }

  public void setCategorie(String categorie) {
    this.categorie = categorie;
  }

  public Car co2(String co2) {
    this.co2 = co2;
    return this;
  }

  /**
   * Get co2
   * @return co2
  **/
  @ApiModelProperty(value = "")


  public String getco2() {
    return co2;
  }

  public void setCo2(String co2) {
    this.co2 = co2;
  }

  public Car consommation(String consommation) {
    this.consommation = consommation;
    return this;
  }

  /**
   * Get consommation
   * @return consommation
  **/
  @ApiModelProperty(value = "")


  public String getConsommation() {
    return consommation;
  }

  public void setConsommation(String consommation) {
    this.consommation = consommation;
  }

  public Car places(String places) {
    this.places = places;
    return this;
  }

  /**
   * Get places
   * @return places
  **/
  @ApiModelProperty(value = "")

  @Valid

  public String getPlaces() {
    return places;
  }

  public void setPlaces(String places) {
    this.places = places;
  }

  public Car portess(String portess) {
    this.portess = portess;
    return this;
  }

  /**
   * Get portess
   * @return portess
  **/
  @ApiModelProperty(value = "")

  @Valid

  public String getPortes() {
    return portess;
  }

  public void setPortes(String portess) {
    this.portess = portess;
  }

  public Car pays(String pays) {
    this.pays = pays;
    return this;
  }

  /**
   * Get pays
   * @return pays
  **/
  @ApiModelProperty(value = "")


  public String getPays() {
    return pays;
  }

  public void setPays(String pays) {
    this.pays = pays;
  }

  public Car zone(String zone) {
    this.zone = zone;
    return this;
  }

  /**
   * Get zone
   * @return zone
  **/
  @ApiModelProperty(value = "")


  public String getZone() {
    return zone;
  }

  public void setZone(String zone) {
    this.zone = zone;
  }

  public Car anciennete(String anciennete) {
    this.anciennete = anciennete;
    return this;
  }

  /**
   * Get anciennete
   * @return anciennete
  **/
  @ApiModelProperty(value = "")


  public String getAnciennete() {
    return anciennete;
  }

  public void setAnciennete(String anciennete) {
    this.anciennete = anciennete;
  }

  public Car prix(int prix) {
    this.prix = prix;
    return this;
  }

  /**
   * Get prix
   * @return prix
  **/
  @ApiModelProperty(value = "")

  @Valid

  public int getPrix() {
    return prix;
  }

  public void setPrix(int prix) {
    this.prix = prix;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Car car = (Car) o;
    return Objects.equals(this.marque, car.marque) &&
        Objects.equals(this.categorie, car.categorie) &&
        Objects.equals(this.co2, car.co2) &&
        Objects.equals(this.consommation, car.consommation) &&
        Objects.equals(this.places, car.places) &&
        Objects.equals(this.portess, car.portess) &&
        Objects.equals(this.pays, car.pays) &&
        Objects.equals(this.zone, car.zone) &&
        Objects.equals(this.anciennete, car.anciennete) &&
        Objects.equals(this.prix, car.prix);
  }

  @Override
  public int hashCode() {
    return Objects.hash(marque, categorie, co2, consommation, places, portess, pays, zone, anciennete, prix);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Car {\n");
    sb.append("    version_id: ").append(toIndentedString(version_id)).append("\n");
    sb.append("    marque: ").append(toIndentedString(marque)).append("\n");
    sb.append("    categorie: ").append(toIndentedString(categorie)).append("\n");
    sb.append("    co2: ").append(toIndentedString(co2)).append("\n");
    sb.append("    consommation: ").append(toIndentedString(consommation)).append("\n");
    sb.append("    places: ").append(toIndentedString(places)).append("\n");
    sb.append("    portess: ").append(toIndentedString(portess)).append("\n");
    sb.append("    pays: ").append(toIndentedString(pays)).append("\n");
    sb.append("    zone: ").append(toIndentedString(zone)).append("\n");
    sb.append("    anciennete: ").append(toIndentedString(anciennete)).append("\n");
    sb.append("    prix: ").append(toIndentedString(prix)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

