SELECT * 
FROM machinery_breakdown.`gibs machinery breakdown dashboard`;

-- Identify how many cases for mesh welding breakdown
SELECT COUNT(Assets)
FROM machinery_breakdown.`gibs machinery breakdown dashboard`
WHERE Assets = 'Mesh Welding (A717)';

-- Identify how many cases for storage robots breakdown
SELECT COUNT(Assets)
FROM machinery_breakdown.`gibs machinery breakdown dashboard`
WHERE Assets = 'Storage Robots (A702)';

-- Identify how many cases for circulation system breakdown
SELECT COUNT(Assets)
FROM machinery_breakdown.`gibs machinery breakdown dashboard`
WHERE Assets = 'Circulation System (CIR)';

-- Identify how many cases for pallet stacker breakdown
SELECT COUNT(Assets)
FROM machinery_breakdown.`gibs machinery breakdown dashboard`
WHERE Assets = 'Pallet Stacker (A699)';