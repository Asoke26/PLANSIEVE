SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 10
AND p.CommentCount <= 32
AND u.Reputation >= 756
AND u.DownVotes >= 55
AND u.DownVotes <= 200

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;