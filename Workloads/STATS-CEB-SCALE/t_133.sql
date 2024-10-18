SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE c.Score=0
AND p.Score>=-2
AND p.CommentCount>=0
AND p.CommentCount<=12
AND p.FavoriteCount>=0
AND p.FavoriteCount<=6
AND u.Views=0
AND u.DownVotes>=0
AND u.DownVotes<=60
AND ph.CreationDate<=1518

AND u.Id = ph.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND u.Id = c.UserId;