SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount >= 0.0
AND p.FavoriteCount >= 7.0
AND pl.LinkTypeId = 1
AND ph.PostHistoryTypeId = 1
AND u.Reputation >= 522
AND u.DownVotes >= 49
AND u.DownVotes <= 351
AND u.UpVotes <= 401
AND v.CreationDate >= 1233
AND u.CreationDate <= 827

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;