// Termm--Fall 2020

#pragma once

#include <glm/glm.hpp>

#include "Material.hpp"

class PhongMaterial : public Material {
public:
  PhongMaterial(const glm::vec3& kd, const glm::vec3& ks, double shininess);
  virtual ~PhongMaterial();
  // getters for material
  glm::vec3 getDiffuse();
  glm::vec3 getSpecular();
  double getShininess();

private:
  glm::vec3 m_kd;
  glm::vec3 m_ks;

  double m_shininess;
};
