SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 2
AND p.CommentCount >= 4
AND p.CommentCount <= 27
AND u.Reputation >= 1130
AND u.DownVotes >= 10
AND u.DownVotes <= 163

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;