SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 6
AND p.Score >= 94
AND p.Score <= 106
AND p.CommentCount <= 20
AND u.DownVotes >= 57
AND c.CreationDate <= 1485
AND p.CreationDate <= 1237
AND v.CreationDate <= 1265

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;