SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 3
AND p.Score >= 16
AND p.Score <= 89
AND p.CommentCount <= 17
AND u.DownVotes >= 11
AND c.CreationDate <= 67
AND p.CreationDate <= 973
AND v.CreationDate <= 842

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId;