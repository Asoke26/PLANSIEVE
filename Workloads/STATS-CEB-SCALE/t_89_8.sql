SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 33.0
AND u.Views >= 842
AND u.UpVotes >= 819
AND ph.CreationDate >= 1377
AND u.CreationDate >= 245
AND u.CreationDate <= 590

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;