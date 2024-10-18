SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 8
AND p.CommentCount <= 19
AND u.Reputation >= 139
AND u.DownVotes >= 42
AND u.DownVotes <= 1920

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;