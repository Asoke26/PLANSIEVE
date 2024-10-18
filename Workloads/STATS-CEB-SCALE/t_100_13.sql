SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 5
AND p.Score >= 19
AND p.Score <= 51
AND p.CommentCount <= 17
AND u.DownVotes >= 103
AND c.CreationDate <= 1243
AND p.CreationDate <= 1240
AND v.CreationDate <= 341

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;