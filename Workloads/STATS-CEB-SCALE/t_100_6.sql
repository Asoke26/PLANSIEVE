SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 18
AND p.Score >= 4
AND p.Score <= 146
AND p.CommentCount <= 13
AND u.DownVotes >= 8
AND c.CreationDate <= 569
AND p.CreationDate <= 284
AND v.CreationDate <= 883

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;