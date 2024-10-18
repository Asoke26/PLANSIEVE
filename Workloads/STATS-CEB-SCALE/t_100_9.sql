SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 1
AND p.Score >= 38
AND p.Score <= 92
AND p.CommentCount <= 19
AND u.DownVotes >= 14
AND c.CreationDate <= 283
AND p.CreationDate <= 305
AND v.CreationDate <= 958

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;