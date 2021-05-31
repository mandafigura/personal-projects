function [P] = euler_newton_simples(x,h)
    %% Description:
    %               Using the Euler Newton algorithm on the book "Numerical
    %               Cotinuation Methods" (Eugene L. Allgower and Kurt
    %               Georg), draws points of a circle centered in (0,0) of
    %               radius = 1 obtained as the kernel of f(x,y) =  x^2 + y^2 - 1.
    %               Suggestions for testing: x = (0,1), h = 1/30 
    %  Input:
    %          x, a initial point x that is a zero of the function above
    %          h, the trace size along function derivative
    %  Output:
    %          P, a list of (ordered) solutions for f(x,y)=0
    traco = 0;
    it = 2;
    x = x';
    P = x';
    while traco < 95                % end condition: max number of points
        Hlin = [-2.*x(2) 2.*x(1)];  % function f tangent (obtained by 90º counter-clockwise rotation of the gradient)
        y = x + h.*Hlin';           % predictor step
        converge = false;
        while ~converge             % corrector loop
            Hlin = [2.*y(1) 2.*y(2)];
            z = y - pinv(Hlin)*[((y(1).^2) + (y(2).^2) - 1)];
            if(abs(z - y) < 1.0e-6)
                converge = true;    % It worked!
            end
            y = z;
        end
        x = z;
        P(traco+2,:) = x';          % saves point
        traco = traco + 1;          % counter
    end
    %% Plot of the curve
    hold on
    daspect([1 1 1]);
    plot(P(:,1),P(:,2),'-')
    hold off
end