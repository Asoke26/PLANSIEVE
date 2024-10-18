SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 9
AND p.Score >= 15
AND p.Score <= 51
AND p.CommentCount <= 18
AND u.DownVotes >= 125
AND c.CreationDate <= 869
AND p.CreationDate <= 1181
AND v.CreationDate <= 1090

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;