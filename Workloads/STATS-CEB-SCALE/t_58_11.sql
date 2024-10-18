SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount >= 2.0
AND p.FavoriteCount >= 1.0
AND pl.LinkTypeId = 3
AND ph.PostHistoryTypeId = 8
AND u.Reputation >= 218

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;