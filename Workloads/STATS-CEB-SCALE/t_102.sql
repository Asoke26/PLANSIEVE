SELECT COUNT(*)
 FROM votes v,
posts p,
badges b,
users u
WHERE p.PostTypeId=1
AND p.CommentCount>=0
AND p.CommentCount<=15
AND u.Reputation>=1
AND u.DownVotes>=0
AND u.DownVotes<=1

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;