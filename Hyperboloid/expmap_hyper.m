function [x] = expmap_hyper(p, v)


%   expmap_sphere maps the tangent vector v in T_{p}M to x on the unit
%   sphere.
%
%   x = expmap_sphere(p, v)
%
%   p and x are unit vectors (points on the unit sphere).
%   v is a tangent vector in T_{p}M.


if abs(inner_prod(v,v))< 1e-10
    x = p;
    return;
end

x = cosh(norm(v)) * p + sinh(norm(v)) * v/ norm(v);


end

