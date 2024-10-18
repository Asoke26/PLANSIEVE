SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 6
AND p.CommentCount >= 8
AND p.CommentCount <= 22
AND u.Reputation >= 15
AND u.DownVotes >= 27
AND u.DownVotes <= 1920

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;