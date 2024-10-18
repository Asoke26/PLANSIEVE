SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.CommentCount >= 2
AND p.CommentCount <= 4
AND u.Reputation >= 117
AND u.DownVotes >= 26
AND u.DownVotes <= 44

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;