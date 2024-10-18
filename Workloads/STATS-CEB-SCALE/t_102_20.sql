SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 9
AND p.CommentCount <= 45
AND u.Reputation >= 1469
AND u.DownVotes >= 17
AND u.DownVotes <= 23

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;