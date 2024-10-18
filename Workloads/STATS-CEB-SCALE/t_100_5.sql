SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 8
AND p.Score >= 62
AND p.Score <= 77
AND p.CommentCount <= 22
AND u.DownVotes >= 34
AND c.CreationDate <= 625
AND p.CreationDate <= 1126
AND v.CreationDate <= 1513

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;