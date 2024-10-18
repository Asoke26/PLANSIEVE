SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 25
AND p.CommentCount <= 45
AND u.Reputation >= 461
AND u.DownVotes >= 48
AND u.DownVotes <= 103

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;