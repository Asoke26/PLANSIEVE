SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 4
AND p.CommentCount <= 9
AND u.Reputation >= 68
AND u.DownVotes >= 37
AND u.DownVotes <= 212

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;