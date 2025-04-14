module fir_filter #(parameter N = 4)(
    input clk,
    input reset,
    input signed [7:0] x_in,        // 8-bit signed input
    output reg signed [15:0] y_out  // 16-bit signed output
);

// Example fixed coefficients: Low-pass [1, 2, 3, 4]
reg signed [7:0] h [0:N-1] = '{8'd1, 8'd2, 8'd3, 8'd4};

// Shift register for input samples
reg signed [7:0] x [0:N-1];

integer i;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        y_out <= 0;
        for (i = 0; i < N; i = i + 1) begin
            x[i] <= 0;
        end
    end else begin
        // Shift input samples
        for (i = N-1; i > 0; i = i - 1) begin
            x[i] <= x[i-1];
        end
        x[0] <= x_in;

        // Compute output
        y_out <= 0;
        for (i = 0; i < N; i = i + 1) begin
            y_out <= y_out + x[i] * h[i];
        end
    end
end

endmodule
