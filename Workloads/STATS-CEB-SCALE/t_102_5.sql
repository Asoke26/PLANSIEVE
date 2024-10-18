SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.CommentCount >= 12
AND p.CommentCount <= 31
AND u.Reputation >= 459
AND u.DownVotes >= 1
AND u.DownVotes <= 30

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;