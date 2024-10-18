SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.PostTypeId = 1
AND p.ViewCount >= 424.0
AND p.ViewCount <= 1066.0
AND p.CommentCount >= 7
AND p.CommentCount <= 32
AND p.FavoriteCount >= 3.0
AND u.DownVotes <= 35
AND u.UpVotes >= 418
AND u.UpVotes <= 705
AND c.CreationDate >= 1170
AND c.CreationDate <= 1174

AND u.Id = ph.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = c.UserId;