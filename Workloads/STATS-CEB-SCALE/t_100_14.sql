SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 5
AND p.Score >= -4
AND p.Score <= 76
AND p.CommentCount <= 14
AND u.DownVotes >= 110
AND c.CreationDate <= 1423
AND p.CreationDate <= 1351
AND v.CreationDate <= 276

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;