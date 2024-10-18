SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 23
AND p.CommentCount <= 24
AND u.Reputation >= 357
AND u.DownVotes >= 14
AND u.DownVotes <= 65

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;