SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 6
AND p.Score >= 32
AND p.Score <= 156
AND p.CommentCount <= 18
AND u.DownVotes >= 7
AND c.CreationDate <= 1327
AND p.CreationDate <= 513
AND v.CreationDate <= 1457

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;