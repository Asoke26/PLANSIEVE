SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.CommentCount >= 4
AND p.CommentCount <= 22
AND u.Reputation >= 351
AND u.DownVotes >= 39
AND u.DownVotes <= 187

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;