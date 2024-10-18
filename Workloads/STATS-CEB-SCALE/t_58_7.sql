SELECT COUNT(*)
 FROM posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount >= 8.0
AND p.FavoriteCount >= 13.0
AND pl.LinkTypeId = 1
AND ph.PostHistoryTypeId = 1
AND u.Reputation >= 32
AND u.DownVotes >= 11
AND u.DownVotes <= 104
AND u.UpVotes <= 550
AND v.CreationDate >= 745
AND u.CreationDate <= 1463

AND p.Id = pl.RelatedPostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;