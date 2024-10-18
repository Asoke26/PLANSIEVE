SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 1
AND p.CommentCount <= 19
AND u.Reputation >= 1460
AND u.DownVotes >= 63
AND u.DownVotes <= 163

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;