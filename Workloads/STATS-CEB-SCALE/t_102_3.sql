SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.CommentCount >= 8
AND p.CommentCount <= 30
AND u.Reputation >= 5859
AND u.DownVotes >= 25
AND u.DownVotes <= 113

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;