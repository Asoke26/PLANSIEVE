SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 10
AND c.CreationDate >= 1055
AND u.CreationDate >= 836

AND u.Id = b.UserId
AND u.Id = c.UserId
AND u.Id = v.UserId;