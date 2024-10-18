SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 20
AND p.Score >= 0
AND p.Score <= 60
AND p.CommentCount <= 10
AND u.DownVotes >= 3
AND c.CreationDate <= 876
AND p.CreationDate <= 945
AND v.CreationDate <= 1025

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;