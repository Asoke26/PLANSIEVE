SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 6
AND p.CommentCount >= 8
AND p.CommentCount <= 15
AND u.Reputation >= 8
AND u.DownVotes >= 44
AND u.DownVotes <= 163

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;